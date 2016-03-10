  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffff, %r13  #  1     0     10     OPC=movq_r64_imm64  
  addw %r13w, %bx                 #  2     0xa   4      OPC=addw_r16_r16    
  notb %bh                        #  3     0xe   2      OPC=notb_rh         
  movswl %r13w, %eax              #  4     0x10  4      OPC=movswl_r32_r16  
  xorb %r13b, %bl                 #  5     0x14  3      OPC=xorb_r8_r8      
  adcw %bx, %ax                   #  6     0x17  3      OPC=adcw_r16_r16    
  callq .set_szp_for_bx           #  7     0x1a  5      OPC=callq_label     
  retq                            #  8     0x1f  1      OPC=retq            
                                                                            
.size target, .-target
