  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  setnbe %al        #  1     0     3      OPC=setnbe_r8       
  movq $0x0, %rdi   #  2     0x3   10     OPC=movq_r64_imm64  
  rolw $0x1, %di    #  3     0xd   3      OPC=rolw_r16_one    
  movzbl %al, %eax  #  4     0x10  3      OPC=movzbl_r32_r8   
  adcb %al, %ah     #  5     0x13  2      OPC=adcb_rh_r8      
  orq %rax, %rax    #  6     0x15  3      OPC=orq_r64_r64     
  retq              #  7     0x18  1      OPC=retq            
                                                              
.size target, .-target
