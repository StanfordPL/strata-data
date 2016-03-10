  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  movq $0x0, %r9                                  #  2     0x5   10     OPC=movq_r64_imm64  
  vmovq %r9, %xmm9                                #  3     0xf   5      OPC=vmovq_xmm_r64   
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0x14  5      OPC=callq_label     
  orps %xmm2, %xmm1                               #  5     0x19  3      OPC=orps_xmm_xmm    
  retq                                            #  6     0x1c  1      OPC=retq            
                                                                                            
.size target, .-target
