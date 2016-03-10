  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  vzeroall                        #  2     0x5   3      OPC=vzeroall            
  vcvtsd2sil %xmm5, %r12d         #  3     0x8   4      OPC=vcvtsd2sil_r32_xmm  
  decl %r12d                      #  4     0xc   3      OPC=decl_r32            
  orq %r12, %r8                   #  5     0xf   3      OPC=orq_r64_r64         
  callq .move_064_128_r8_r9_xmm1  #  6     0x12  5      OPC=callq_label         
  retq                            #  7     0x17  1      OPC=retq                
                                                                                
.size target, .-target
