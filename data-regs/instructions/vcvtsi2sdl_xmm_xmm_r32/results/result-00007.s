  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vmovd %ebx, %xmm1              #  1     0     4      OPC=vmovd_xmm_r32         
  vcvtdq2pd %ymm1, %ymm14        #  2     0x4   4      OPC=vcvtdq2pd_ymm_ymm     
  punpckhqdq %xmm2, %xmm2        #  3     0x8   4      OPC=punpckhqdq_xmm_xmm    
  vmovlhps %xmm2, %xmm14, %xmm1  #  4     0xc   4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                           #  5     0x10  1      OPC=retq                  
                                                                                 
.size target, .-target
