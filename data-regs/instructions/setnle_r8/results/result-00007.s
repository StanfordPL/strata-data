  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setng %bpl               #  1     0    4      OPC=setng_r8     
  salb $0x1, %bpl          #  2     0x4  2      OPC=salb_r8_one  
  callq .read_zf_into_rbx  #  3     0x6  5      OPC=callq_label  
  retq                     #  4     0xb  1      OPC=retq         
                                                                 
.size target, .-target
