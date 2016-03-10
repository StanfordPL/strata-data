  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  xchgb %ah, %bl      #  1     0     2      OPC=xchgb_r8_rh     
  movb %ah, %al       #  2     0x2   2      OPC=movb_r8_rh      
  movsbl %al, %r13d   #  3     0x4   4      OPC=movsbl_r32_r8   
  movslq %r13d, %rdi  #  4     0x8   3      OPC=movslq_r64_r32  
  incw %di            #  5     0xb   3      OPC=incw_r16        
  xchgw %di, %ax      #  6     0xe   3      OPC=xchgw_r16_r16   
  movsbq %dil, %rsi   #  7     0x11  4      OPC=movsbq_r64_r8   
  adcb %bl, %sil      #  8     0x15  3      OPC=adcb_r8_r8      
  movswl %si, %ebx    #  9     0x18  3      OPC=movswl_r32_r16  
  retq                #  10    0x1b  1      OPC=retq            
                                                                
.size target, .-target
