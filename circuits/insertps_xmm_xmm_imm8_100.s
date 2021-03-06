  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode              
.target:                                        #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label     
  movq $0x0, %r12                               #  2     0x5   10     OPC=movq_r64_imm64  
  vmovd %r12d, %xmm6                            #  3     0xf   5      OPC=vmovd_xmm_r32   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0x14  5      OPC=callq_label     
  retq                                          #  5     0x19  1      OPC=retq            
                                                                                          
.size target, .-target
