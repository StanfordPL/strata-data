  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movzwl %cx, %edx                   #  1     0     3      OPC=movzwl_r32_r16  
  callq .move_032_016_edx_r10w_r11w  #  2     0x3   5      OPC=callq_label     
  xaddw %r11w, %r10w                 #  3     0x8   5      OPC=xaddw_r16_r16   
  seto %bpl                          #  4     0xd   3      OPC=seto_r8         
  negb %bpl                          #  5     0x10  2      OPC=negb_r8         
  sbbw %r11w, %bx                    #  6     0x12  4      OPC=sbbw_r16_r16    
  retq                               #  7     0x16  1      OPC=retq            
                                                                               
.size target, .-target
