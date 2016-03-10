  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm3                    #  1     0     4      OPC=vmovd_xmm_r32           
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  vbroadcastsd %xmm3, %ymm1            #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm    
  vpunpckhdq %xmm1, %xmm2, %xmm10      #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vunpcklpd %xmm10, %xmm10, %xmm2      #  5     0x12  5      OPC=vunpcklpd_xmm_xmm_xmm   
  vmovsd %xmm12, %xmm2, %xmm1          #  6     0x17  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
