  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm9  #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  vmovshdup %ymm9, %ymm5  #  2     0x5   5      OPC=vmovshdup_ymm_ymm  
  vmovd %xmm5, %r14d      #  3     0xa   5      OPC=vmovd_r32_xmm      
  movl %r14d, %ebx        #  4     0xf   3      OPC=movl_r32_r32       
  retq                    #  5     0x12  1      OPC=retq               
                                                                       
.size target, .-target
