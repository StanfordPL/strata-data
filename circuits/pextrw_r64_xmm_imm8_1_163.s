  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm3                          #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label        
  vmovq %xmm11, %xmm10                            #  3     0xa   5      OPC=vmovq_xmm_xmm      
  movq %xmm10, %rbx                               #  4     0xf   5      OPC=movq_r64_xmm       
  retq                                            #  5     0x14  1      OPC=retq               
                                                                                               
.size target, .-target
