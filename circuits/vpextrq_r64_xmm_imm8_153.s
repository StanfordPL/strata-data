  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP  Bytes  Opcode                       
.target:                             #        0    0      OPC=<label>                  
  vcvtsd2ss %xmm1, %xmm1, %xmm15     #  1     0    4      OPC=vcvtsd2ss_xmm_xmm_xmm    
  vpunpckhqdq %xmm15, %xmm1, %xmm11  #  2     0x4  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movq %xmm11, %rbx                  #  3     0x9  5      OPC=movq_r64_xmm             
  retq                               #  4     0xe  1      OPC=retq                     
                                                                                       
.size target, .-target
