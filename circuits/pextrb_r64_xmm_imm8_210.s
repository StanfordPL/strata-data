  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP  Bytes  Opcode                       
.target:                           #        0    0      OPC=<label>                  
  vpmovzxbd %xmm1, %ymm6           #  1     0    5      OPC=vpmovzxbd_ymm_xmm        
  vpunpckhqdq %ymm6, %ymm6, %ymm3  #  2     0x5  4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vmovd %xmm3, %ebx                #  3     0x9  4      OPC=vmovd_r32_xmm            
  orb %bh, %bh                     #  4     0xd  2      OPC=orb_rh_rh                
  retq                             #  5     0xf  1      OPC=retq                     
                                                                                     
.size target, .-target
