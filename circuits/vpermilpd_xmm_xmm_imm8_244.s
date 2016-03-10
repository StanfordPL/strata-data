  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  vzeroall                        #  2     0x5   3      OPC=vzeroall            
  vcvtsd2sil %xmm13, %r9d         #  3     0x8   5      OPC=vcvtsd2sil_r32_xmm  
  callq .move_064_128_r8_r9_xmm3  #  4     0xd   5      OPC=callq_label         
  movddup %xmm3, %xmm1            #  5     0x12  4      OPC=movddup_xmm_xmm     
  retq                            #  6     0x16  1      OPC=retq                
                                                                                
.size target, .-target
