  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3  #  1     0    5      OPC=vpmovzxwd_ymm_xmm  
  movd %xmm3, %r8d        #  2     0x5  5      OPC=movd_r32_xmm       
  movzwl %r8w, %ebx       #  3     0xa  4      OPC=movzwl_r32_r16     
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
