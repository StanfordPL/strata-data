  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                   
.target:                         #        0     0      OPC=<label>              
  vpmovzxwd %xmm1, %xmm12        #  1     0     5      OPC=vpmovzxwd_xmm_xmm    
  andnpd %xmm1, %xmm1            #  2     0x5   4      OPC=andnpd_xmm_xmm       
  vandnps %ymm12, %ymm12, %ymm8  #  3     0x9   5      OPC=vandnps_ymm_ymm_ymm  
  vmovd %xmm8, %ecx              #  4     0xe   4      OPC=vmovd_r32_xmm        
  cvtsi2sdl %ecx, %xmm1          #  5     0x12  4      OPC=cvtsi2sdl_xmm_r32    
  retq                           #  6     0x16  1      OPC=retq                 
                                                                                
.size target, .-target
