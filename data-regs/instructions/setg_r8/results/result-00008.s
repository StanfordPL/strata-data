  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setnle %r13b             #  1     0    4      OPC=setnle_r8    
  callq .read_zf_into_rbx  #  2     0x4  5      OPC=callq_label  
  xchgb %bl, %r13b         #  3     0x9  3      OPC=xchgb_r8_r8  
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
