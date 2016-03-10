  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovd %ebx, %xmm5                    #  2     0x5   4      OPC=vmovd_xmm_r32          
  vmovaps %ymm5, %ymm11                #  3     0x9   4      OPC=vmovaps_ymm_ymm        
  vunpcklps %xmm11, %xmm2, %xmm1       #  4     0xd   5      OPC=vunpcklps_xmm_xmm_xmm  
  punpcklqdq %xmm13, %xmm1             #  5     0x12  5      OPC=punpcklqdq_xmm_xmm     
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
