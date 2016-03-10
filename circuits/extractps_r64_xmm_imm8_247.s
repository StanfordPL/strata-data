  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm3                      #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  callq .move_64_128_xmm10_xmm11_xmm2             #  3     0x9   5      OPC=callq_label         
  movq $0x5, %rbx                                 #  4     0xe   10     OPC=movq_r64_imm64      
  cmpb %bh, %bl                                   #  5     0x18  2      OPC=cmpb_r8_rh          
  sqrtsd %xmm1, %xmm2                             #  6     0x1a  4      OPC=sqrtsd_xmm_xmm      
  callq .move_128_064_xmm2_r10_r11                #  7     0x1e  5      OPC=callq_label         
  cmovnol %r11d, %ebx                             #  8     0x23  4      OPC=cmovnol_r32_r32     
  retq                                            #  9     0x27  1      OPC=retq                
                                                                                                
.size target, .-target
