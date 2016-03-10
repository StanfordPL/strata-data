  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r13  #  1     0     10     OPC=movq_r64_imm64  
  xorw %bx, %r13w                 #  2     0xa   4      OPC=xorw_r16_r16    
  callq .read_sf_into_rbx         #  3     0xe   5      OPC=callq_label     
  xorb %bh, %bl                   #  4     0x13  2      OPC=xorb_r8_rh      
  xchgl %ebx, %r13d               #  5     0x15  3      OPC=xchgl_r32_r32   
  retq                            #  6     0x18  1      OPC=retq            
                                                                            
.size target, .-target
