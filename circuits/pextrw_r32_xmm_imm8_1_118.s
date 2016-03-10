  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  xorl %r9d, %r9d                           #  1     0     3      OPC=xorl_r32_r32     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  movq $0x10, %rbx                          #  3     0x8   10     OPC=movq_r64_imm64   
  rclb $0x1, %r8b                           #  4     0x12  3      OPC=rclb_r8_one      
  setnle %bh                                #  5     0x15  3      OPC=setnle_rh        
  cmovnaw %r9w, %bx                         #  6     0x18  5      OPC=cmovnaw_r16_r16  
  retq                                      #  7     0x1d  1      OPC=retq             
                                                                                       
.size target, .-target
