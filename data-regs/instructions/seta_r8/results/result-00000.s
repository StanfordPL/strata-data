  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  sete %r14b               #  1     0    4      OPC=sete_r8      
  adcb %r14b, %r14b        #  2     0x4  3      OPC=adcb_r8_r8   
  callq .read_zf_into_rbx  #  3     0x7  5      OPC=callq_label  
  retq                     #  4     0xc  1      OPC=retq         
                                                                 
.size target, .-target
