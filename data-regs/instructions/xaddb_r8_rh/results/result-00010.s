  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  xorq %rcx, %rcx                    #  1     0     3      OPC=xorq_r64_r64   
  callq .move_064_032_rcx_r10d_r11d  #  2     0x3   5      OPC=callq_label    
  incw %r11w                         #  3     0x8   4      OPC=incw_r16       
  movzbw %ah, %cx                    #  4     0xc   4      OPC=movzbw_r16_rh  
  xaddl %r11d, %r10d                 #  5     0x10  4      OPC=xaddl_r32_r32  
  movb %bl, %ah                      #  6     0x14  2      OPC=movb_rh_r8     
  adcb %cl, %bl                      #  7     0x16  2      OPC=adcb_r8_r8     
  retq                               #  8     0x18  1      OPC=retq           
                                                                              
.size target, .-target
