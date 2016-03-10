  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  vpmovzxwq %xmm1, %ymm9          #  1     0     5      OPC=vpmovzxwq_ymm_xmm       
  vmovups %ymm9, %ymm2            #  2     0x5   5      OPC=vmovups_ymm_ymm         
  movq $0x0, %rbx                 #  3     0xa   10     OPC=movq_r64_imm64          
  vpunpckhdq %xmm2, %xmm9, %xmm3  #  4     0x14  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovd %xmm3, %r10d              #  5     0x18  5      OPC=vmovd_r32_xmm           
  xaddl %r10d, %ebx               #  6     0x1d  4      OPC=xaddl_r32_r32           
  retq                            #  7     0x21  1      OPC=retq                    
                                                                                    
.size target, .-target
