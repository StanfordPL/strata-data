  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                       #  Line  RIP  Bytes  Opcode                    
.target:                     #        0    0      OPC=<label>               
  vpbroadcastq %xmm1, %xmm7  #  1     0    5      OPC=vpbroadcastq_xmm_xmm  
  vcvtsd2sil %xmm7, %r11d    #  2     0x5  4      OPC=vcvtsd2sil_r32_xmm    
  movq %r11, %rbx            #  3     0x9  3      OPC=movq_r64_r64          
  retq                       #  4     0xc  1      OPC=retq                  
                                                                            
.size target, .-target
