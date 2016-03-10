  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %ymm3                          #  1     0     5      OPC=vpmovzxwd_ymm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovd %xmm11, %eax                              #  3     0xa   4      OPC=vmovd_r32_xmm      
  movzwq %ax, %rbx                                #  4     0xe   4      OPC=movzwq_r64_r16     
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
