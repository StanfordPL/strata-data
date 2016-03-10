  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  setae %al           #  1     0    3      OPC=setae_r8        
  setc %ah            #  2     0x3  3      OPC=setc_rh         
  movzwl %ax, %r11d   #  3     0x6  4      OPC=movzwl_r32_r16  
  movzwl %r11w, %ebx  #  4     0xa  4      OPC=movzwl_r32_r16  
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
