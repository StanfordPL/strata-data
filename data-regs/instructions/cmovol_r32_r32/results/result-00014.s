  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                  #  Line  RIP   Bytes  Opcode                
.target:                #        0     0      OPC=<label>           
  movl %ecx, %r12d      #  1     0     3      OPC=movl_r32_r32      
  setno %r11b           #  2     0x3   4      OPC=setno_r8          
  callq .clear_cf       #  3     0x7   5      OPC=callq_label       
  decb %r11b            #  4     0xc   3      OPC=decb_r8           
  cmovnbel %r12d, %ebx  #  5     0xf   4      OPC=cmovnbel_r32_r32  
  retq                  #  6     0x13  1      OPC=retq              
                                                                    
.size target, .-target
