  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vandnps %xmm1, %xmm1, %xmm7        #  1     0     4      OPC=vandnps_xmm_xmm_xmm   
  vmovddup %xmm7, %xmm13             #  2     0x4   4      OPC=vmovddup_xmm_xmm      
  vmulps %xmm2, %xmm1, %xmm8         #  3     0x8   4      OPC=vmulps_xmm_xmm_xmm    
  movsldup %xmm8, %xmm9              #  4     0xc   5      OPC=movsldup_xmm_xmm      
  vorps %ymm13, %ymm13, %ymm13       #  5     0x11  5      OPC=vorps_ymm_ymm_ymm     
  vaddps %xmm13, %xmm9, %xmm9        #  6     0x16  5      OPC=vaddps_xmm_xmm_xmm    
  vpbroadcastb %xmm13, %xmm12        #  7     0x1b  5      OPC=vpbroadcastb_xmm_xmm  
  vmovsldup %ymm12, %ymm8            #  8     0x20  5      OPC=vmovsldup_ymm_ymm     
  callq .move_64_128_xmm8_xmm9_xmm1  #  9     0x25  5      OPC=callq_label           
  retq                               #  10    0x2a  1      OPC=retq                  
                                                                                     
.size target, .-target
