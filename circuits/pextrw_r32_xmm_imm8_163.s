  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovzxwd %xmm1, %xmm2                        #  1     0     5      OPC=vpmovzxwd_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x5   5      OPC=callq_label        
  vmovd %xmm7, %r15d                            #  3     0xa   5      OPC=vmovd_r32_xmm      
  movq $0x20, %rbx                              #  4     0xf   10     OPC=movq_r64_imm64     
  xaddw %bx, %r15w                              #  5     0x19  5      OPC=xaddw_r16_r16      
  retq                                          #  6     0x1e  1      OPC=retq               
                                                                                             
.size target, .-target
