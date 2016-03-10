  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  vmovd %ecx, %xmm12  #  1     0     4      OPC=vmovd_xmm_r32   
  setno %ch           #  2     0x4   3      OPC=setno_rh        
  movd %xmm12, %ebp   #  3     0x7   5      OPC=movd_r32_xmm    
  negb %ch            #  4     0xc   2      OPC=negb_rh         
  cmovel %ebp, %ebx   #  5     0xe   3      OPC=cmovel_r32_r32  
  retq                #  6     0x11  1      OPC=retq            
                                                                
.size target, .-target
