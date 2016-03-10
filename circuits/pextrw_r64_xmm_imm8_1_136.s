  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm4  #  1     0    5      OPC=vpmovzxwd_xmm_xmm  
  movd %xmm4, %eax        #  2     0x5  4      OPC=movd_r32_xmm       
  movq %rax, %rbx         #  3     0x9  3      OPC=movq_r64_r64       
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
