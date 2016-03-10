  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label        
  movaps %xmm9, %xmm3                #  2     0x5   4      OPC=movaps_xmm_xmm     
  vmovd %ebx, %xmm5                  #  3     0x9   4      OPC=vmovd_xmm_r32      
  vcvtdq2pd %ymm5, %ymm9             #  4     0xd   4      OPC=vcvtdq2pd_ymm_ymm  
  movlhps %xmm3, %xmm9               #  5     0x11  4      OPC=movlhps_xmm_xmm    
  vmovdqu %xmm9, %xmm1               #  6     0x15  5      OPC=vmovdqu_xmm_xmm    
  retq                               #  7     0x1a  1      OPC=retq               
                                                                                  
.size target, .-target
