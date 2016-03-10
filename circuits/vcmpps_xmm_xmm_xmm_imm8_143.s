  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r9  #  1     0     10     OPC=movq_r64_imm64  
  vmovq %r9, %xmm1               #  2     0xa   5      OPC=vmovq_xmm_r64   
  haddpd %xmm1, %xmm1            #  3     0xf   4      OPC=haddpd_xmm_xmm  
  retq                           #  4     0x13  1      OPC=retq            
                                                                           
.size target, .-target
