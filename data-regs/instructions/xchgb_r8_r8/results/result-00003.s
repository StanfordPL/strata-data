  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x8, %r14          #  1     0     10     OPC=movq_r64_imm64   
  movsbl %cl, %r9d         #  2     0xa   4      OPC=movsbl_r32_r8    
  popcntw %r9w, %dx        #  3     0xe   6      OPC=popcntw_r16_r16  
  callq .read_cf_into_rcx  #  4     0x14  5      OPC=callq_label      
  rclb $0x1, %r14b         #  5     0x19  3      OPC=rclb_r8_one      
  adcb %bl, %cl            #  6     0x1c  2      OPC=adcb_r8_r8       
  movw %r9w, %bx           #  7     0x1e  4      OPC=movw_r16_r16     
  retq                     #  8     0x22  1      OPC=retq             
                                                                      
.size target, .-target
