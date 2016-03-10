  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label  
  setng %bl                #  2     0x5  3      OPC=setng_r8     
  negw %bx                 #  3     0x8  3      OPC=negw_r16     
  setz %ah                 #  4     0xb  3      OPC=setz_rh      
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
