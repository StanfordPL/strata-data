  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0x3, %rbx                               #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0xa   5      OPC=callq_label      
  negw %bx                                      #  3     0xf   3      OPC=negw_r16         
  subb %bh, %bh                                 #  4     0x12  2      OPC=subb_rh_rh       
  xchgw %r13w, %r12w                            #  5     0x14  4      OPC=xchgw_r16_r16    
  cmovlew %r12w, %bx                            #  6     0x18  5      OPC=cmovlew_r16_r16  
  retq                                          #  7     0x1d  1      OPC=retq             
                                                                                           
.size target, .-target
