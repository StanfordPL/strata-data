  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_64_xmm1_xmm8_xmm9         #  1     0     5      OPC=callq_label        
  vpmovzxwd %xmm9, %ymm13                   #  2     0x5   5      OPC=vpmovzxwd_ymm_xmm  
  vmovupd %ymm13, %ymm3                     #  3     0xa   5      OPC=vmovupd_ymm_ymm    
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  4     0xf   5      OPC=callq_label        
  movl %r9d, %ebx                           #  5     0x14  3      OPC=movl_r32_r32       
  retq                                      #  6     0x17  1      OPC=retq               
                                                                                         
.size target, .-target
