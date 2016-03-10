  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  vmovd %xmm1, %r10d       #  1     0     5      OPC=vmovd_r32_xmm      
  vpmovzxbq %xmm1, %ymm12  #  2     0x5   5      OPC=vpmovzxbq_ymm_xmm  
  vpmovzxwq %xmm12, %ymm0  #  3     0xa   5      OPC=vpmovzxwq_ymm_xmm  
  cvtsd2sil %xmm0, %ebx    #  4     0xf   4      OPC=cvtsd2sil_r32_xmm  
  rolb $0x1, %bh           #  5     0x13  2      OPC=rolb_rh_one        
  xchgl %ebx, %r10d        #  6     0x15  3      OPC=xchgl_r32_r32      
  retq                     #  7     0x18  1      OPC=retq               
                                                                        
.size target, .-target
