  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm15                #  1     0     4      OPC=vmovd_xmm_r32            
  vcvtdq2pd %ymm15, %ymm15          #  2     0x4   5      OPC=vcvtdq2pd_ymm_ymm        
  vpunpcklqdq %xmm15, %xmm2, %xmm7  #  3     0x9   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovhlps %xmm7, %xmm2, %xmm1      #  4     0xe   4      OPC=vmovhlps_xmm_xmm_xmm     
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
