  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movq $0x20, %rax    #  1     0     10     OPC=movq_r64_imm64   
  popcntq %rax, %rcx  #  2     0xa   5      OPC=popcntq_r64_r64  
  decw %ax            #  3     0xf   3      OPC=decw_r16         
  cwtl                #  4     0x12  1      OPC=cwtl             
  movsbw %ah, %ax     #  5     0x13  4      OPC=movsbw_r16_rh    
  notw %ax            #  6     0x17  3      OPC=notw_r16         
  rclb $0x1, %al      #  7     0x1a  2      OPC=rclb_r8_one      
  retq                #  8     0x1c  1      OPC=retq             
                                                                 
.size target, .-target
