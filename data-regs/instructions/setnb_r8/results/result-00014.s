  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movq $0xfffffffffffffffe, %rbx    #  1     0     10     OPC=movq_r64_imm64   
  adcb %bh, %bh                     #  2     0xa   2      OPC=adcb_rh_rh       
  salb $0x1, %bh                    #  3     0xc   2      OPC=salb_rh_one      
  popcntw %bx, %r11w                #  4     0xe   6      OPC=popcntw_r16_r16  
  callq .move_016_008_bx_r10b_r11b  #  5     0x14  5      OPC=callq_label      
  shlw $0x1, %r11w                  #  6     0x19  4      OPC=shlw_r16_one     
  setnp %bl                         #  7     0x1d  3      OPC=setnp_r8         
  retq                              #  8     0x20  1      OPC=retq             
                                                                               
.size target, .-target
