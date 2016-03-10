  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                      
.target:                           #        0     0      OPC=<label>                 
  vpxor %ymm15, %ymm15, %ymm14     #  1     0     5      OPC=vpxor_ymm_ymm_ymm       
  vpunpckhdq %xmm14, %xmm1, %xmm9  #  2     0x5   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vpmovzxwq %xmm9, %xmm15          #  3     0xa   5      OPC=vpmovzxwq_xmm_xmm       
  movq %xmm15, %rbx                #  4     0xf   5      OPC=movq_r64_xmm            
  retq                             #  5     0x14  1      OPC=retq                    
                                                                                     
.size target, .-target
