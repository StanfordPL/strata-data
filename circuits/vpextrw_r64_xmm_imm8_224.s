  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vmovq %xmm1, %xmm0      #  1     0     4      OPC=vmovq_xmm_xmm      
  vpmovzxwd %xmm0, %xmm3  #  2     0x4   5      OPC=vpmovzxwd_xmm_xmm  
  xorq %rbx, %rbx         #  3     0x9   3      OPC=xorq_r64_r64       
  movd %xmm3, %edi        #  4     0xc   4      OPC=movd_r32_xmm       
  cmovbew %di, %bx        #  5     0x10  4      OPC=cmovbew_r16_r16    
  retq                    #  6     0x14  1      OPC=retq               
                                                                       
.size target, .-target
