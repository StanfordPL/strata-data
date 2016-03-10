  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  xaddb %ah, %bl    #  1     0     3      OPC=xaddb_r8_rh    
  movsbq %bl, %r12  #  2     0x3   4      OPC=movsbq_r64_r8  
  movq %r12, %rsp   #  3     0x7   3      OPC=movq_r64_r64   
  movq %rsp, %rax   #  4     0xa   3      OPC=movq_r64_r64   
  movb %bl, %ah     #  5     0xd   2      OPC=movb_rh_r8     
  cltq              #  6     0xf   2      OPC=cltq           
  retq              #  7     0x11  1      OPC=retq           
                                                             
.size target, .-target
