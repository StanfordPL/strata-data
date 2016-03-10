  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_pf_into_rbx  #  1     0    5      OPC=callq_label    
  movsbw %bl, %ax          #  2     0x5  4      OPC=movsbw_r16_r8  
  xaddb %ah, %bl           #  3     0x9  3      OPC=xaddb_r8_rh    
  retq                     #  4     0xc  1      OPC=retq           
                                                                   
.size target, .-target
