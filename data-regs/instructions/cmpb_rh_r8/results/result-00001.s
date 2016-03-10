  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movsbl %bl, %r10d   #  1     0     4      OPC=movsbl_r32_r8    
  popcntq %r10, %rcx  #  2     0x4   5      OPC=popcntq_r64_r64  
  movzwl %cx, %r14d   #  3     0x9   4      OPC=movzwl_r32_r16   
  rclw $0x1, %r14w    #  4     0xd   4      OPC=rclw_r16_one     
  xchgl %r14d, %r10d  #  5     0x11  3      OPC=xchgl_r32_r32    
  movb %r14b, %dl     #  6     0x14  3      OPC=movb_r8_r8       
  subb %dl, %ah       #  7     0x17  2      OPC=subb_rh_r8       
  retq                #  8     0x19  1      OPC=retq             
                                                                 
.size target, .-target
