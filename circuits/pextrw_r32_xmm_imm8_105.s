  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm2                          #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  movq %xmm9, %rdi                                #  3     0xa   5      OPC=movq_r64_xmm       
  movzwl %di, %ebx                                #  4     0xf   3      OPC=movzwl_r32_r16     
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
