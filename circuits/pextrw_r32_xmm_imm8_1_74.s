  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpmovzxwd %xmm1, %ymm5           #  1     0     5      OPC=vpmovzxwd_ymm_xmm        
  vpunpckhqdq %ymm5, %ymm5, %ymm2  #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vpmovsxwq %xmm1, %xmm12          #  3     0x9   5      OPC=vpmovsxwq_xmm_xmm        
  vcvttsd2sil %xmm12, %ebx         #  4     0xe   5      OPC=vcvttsd2sil_r32_xmm      
  vorpd %ymm2, %ymm2, %ymm9        #  5     0x13  4      OPC=vorpd_ymm_ymm_ymm        
  vmovd %xmm9, %eax                #  6     0x17  4      OPC=vmovd_r32_xmm            
  xaddl %ebx, %eax                 #  7     0x1b  3      OPC=xaddl_r32_r32            
  retq                             #  8     0x1e  1      OPC=retq                     
                                                                                      
.size target, .-target
