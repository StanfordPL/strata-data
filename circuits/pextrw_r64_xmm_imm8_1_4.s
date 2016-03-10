  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movq $0x10, %rbx                 #  1     0     10     OPC=movq_r64_imm64           
  vpunpckhqdq %xmm1, %xmm1, %xmm1  #  2     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  shlb $0x1, %bh                   #  3     0xe   2      OPC=shlb_rh_one              
  callq .move_128_064_xmm1_r8_r9   #  4     0x10  5      OPC=callq_label              
  movb %bl, %bh                    #  5     0x15  2      OPC=movb_rh_r8               
  cmovgew %r8w, %bx                #  6     0x17  5      OPC=cmovgew_r16_r16          
  retq                             #  7     0x1c  1      OPC=retq                     
                                                                                      
.size target, .-target
