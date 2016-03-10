  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32     
  cmovlw %bx, %bx                               #  2     0x2   4      OPC=cmovlw_r16_r16   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x6   5      OPC=callq_label      
  testb %bh, %bh                                #  4     0xb   2      OPC=testb_rh_rh      
  adcb %bh, %bh                                 #  5     0xd   2      OPC=adcb_rh_rh       
  cmovlew %r13w, %bx                            #  6     0xf   5      OPC=cmovlew_r16_r16  
  retq                                          #  7     0x14  1      OPC=retq             
                                                                                           
.size target, .-target
