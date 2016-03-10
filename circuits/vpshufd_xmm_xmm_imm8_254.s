  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vcvtsd2ss %xmm2, %xmm2, %xmm11   #  1     0    4      OPC=vcvtsd2ss_xmm_xmm_xmm    
  vmovshdup %xmm11, %xmm4          #  2     0x4  5      OPC=vmovshdup_xmm_xmm        
  vpunpckhqdq %xmm4, %xmm2, %xmm1  #  3     0x9  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                             #  4     0xd  1      OPC=retq                     
                                                                                     
.size target, .-target
