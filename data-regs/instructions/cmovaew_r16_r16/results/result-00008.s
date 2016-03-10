  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  cmc                #  1     0    1      OPC=cmc               
  movzwq %cx, %rsi   #  2     0x1  4      OPC=movzwq_r64_r16    
  movl %esi, %eax    #  3     0x5  2      OPC=movl_r32_r32      
  cmovnaew %ax, %bx  #  4     0x7  4      OPC=cmovnaew_r16_r16  
  retq               #  5     0xb  1      OPC=retq              
                                                                
.size target, .-target
