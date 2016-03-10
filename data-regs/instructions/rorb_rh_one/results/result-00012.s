  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movb %ah, %al     #  1     0    2      OPC=movb_r8_rh      
  sarw $0x1, %ax    #  2     0x2  3      OPC=sarw_r16_one    
  movzwl %ax, %ecx  #  3     0x5  3      OPC=movzwl_r32_r16  
  xchgb %al, %ah    #  4     0x8  2      OPC=xchgb_rh_r8     
  sbbw %ax, %cx     #  5     0xa  3      OPC=sbbw_r16_r16    
  retq              #  6     0xd  1      OPC=retq            
                                                             
.size target, .-target
