  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  movzbl %cl, %edx                #  2     0xa   3      OPC=movzbl_r32_r8   
  rolb $0x1, %dh                  #  3     0xd   2      OPC=rolb_rh_one     
  setnbe %dl                      #  4     0xf   3      OPC=setnbe_r8       
  shll $0x1, %edx                 #  5     0x12  2      OPC=shll_r32_one    
  setnbe %bl                      #  6     0x14  3      OPC=setnbe_r8       
  retq                            #  7     0x17  1      OPC=retq            
                                                                            
.size target, .-target
