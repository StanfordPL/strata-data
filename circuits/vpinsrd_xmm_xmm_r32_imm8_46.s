  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movd %ebx, %xmm12                    #  2     0x5   5      OPC=movd_xmm_r32           
  vbroadcastss %xmm12, %ymm7           #  3     0xa   5      OPC=vbroadcastss_ymm_xmm   
  vunpckhps %xmm2, %xmm7, %xmm1        #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  movsd %xmm10, %xmm1                  #  5     0x13  5      OPC=movsd_xmm_xmm          
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
