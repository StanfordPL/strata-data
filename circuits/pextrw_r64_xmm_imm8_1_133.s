  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpunpckhdq %xmm1, %xmm1, %xmm15  #  1     0     4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxwq %xmm15, %ymm0          #  2     0x4   5      OPC=vpmovzxwq_ymm_xmm       
  vmovups %ymm0, %ymm13            #  3     0x9   4      OPC=vmovups_ymm_ymm         
  vunpckhpd %xmm1, %xmm13, %xmm1   #  4     0xd   4      OPC=vunpckhpd_xmm_xmm_xmm   
  movq %xmm1, %rbx                 #  5     0x11  5      OPC=movq_r64_xmm            
  retq                             #  6     0x16  1      OPC=retq                    
                                                                                     
.size target, .-target
