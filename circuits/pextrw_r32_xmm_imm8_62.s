  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  movq $0x0, %rbx                   #  1     0     10     OPC=movq_r64_imm64     
  punpckhdq %xmm1, %xmm1            #  2     0xa   4      OPC=punpckhdq_xmm_xmm  
  movdqu %xmm1, %xmm3               #  3     0xe   4      OPC=movdqu_xmm_xmm     
  callq .move_128_064_xmm3_r10_r11  #  4     0x12  5      OPC=callq_label        
  xaddw %r11w, %bx                  #  5     0x17  5      OPC=xaddw_r16_r16      
  retq                              #  6     0x1c  1      OPC=retq               
                                                                                 
.size target, .-target
