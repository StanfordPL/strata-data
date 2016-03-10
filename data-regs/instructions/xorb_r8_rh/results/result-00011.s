  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                   #  Line  RIP   Bytes  Opcode             
.target:                 #        0     0      OPC=<label>        
  movzbw %ah, %cx        #  1     0     4      OPC=movzbw_r16_rh  
  movzbq %bl, %rbp       #  2     0x4   4      OPC=movzbq_r64_r8  
  callq .clear_cf        #  3     0x8   5      OPC=callq_label    
  setnc %bh              #  4     0xd   3      OPC=setnc_rh       
  sall $0x1, %ebp        #  5     0x10  3      OPC=sall_r32_one   
  sarq %cl, %rbp         #  6     0x13  3      OPC=sarq_r64_cl    
  setb %ch               #  7     0x16  3      OPC=setb_rh        
  xorw %cx, %bx          #  8     0x19  3      OPC=xorw_r16_r16   
  callq .set_szp_for_bl  #  9     0x1c  5      OPC=callq_label    
  retq                   #  10    0x21  1      OPC=retq           
                                                                  
.size target, .-target
