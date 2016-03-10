  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  decw %bx                        #  1     0     3      OPC=decw_r16        
  movq $0xffffffffffffffff, %rdi  #  2     0x3   10     OPC=movq_r64_imm64  
  xorw %di, %bx                   #  3     0xd   3      OPC=xorw_r16_r16    
  movzwl %bx, %esi                #  4     0x10  3      OPC=movzwl_r32_r16  
  adcw %si, %di                   #  5     0x13  3      OPC=adcw_r16_r16    
  callq .set_szp_for_bx           #  6     0x16  5      OPC=callq_label     
  retq                            #  7     0x1b  1      OPC=retq            
                                                                            
.size target, .-target
